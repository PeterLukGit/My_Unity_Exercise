using UnityEngine;
using System;
using Cinemachine.Utility;

namespace Cinemachine
{
    /// <summary>Defines a group of target objects, each with a radius and a weight.
    /// The weight is used when calculating the average position of the target group.
    /// Higher-weighted members of the group will count more.
    /// The bounding bos is calculated by taking the member positions and radii into account.
    /// </summary>
    [DocumentationSorting(19, DocumentationSortingAttribute.Level.UserRef)]
    [AddComponentMenu("Cinemachine/CinemachineTargetGroup")]
    [SaveDuringPlay][ExecuteInEditMode]
    public class CinemachineTargetGroup : MonoBehaviour
    {
        /// <summary>Holds the information that represents a member of the group</summary>
        [Serializable] public struct Target
        {
            /// <summary>The target objects.  This object's position and orientation will
            /// contribute to the group's average position and orientation, in accordance
            /// with its weight</summary>
            public Transform target;
            /// <summary>How much weight to give the target when averaging.  Cannot be negative.</summary>
            public float weight;
            /// <summary>The radius of the target, used for calculating the bounding box.  Cannot be negative.</summary>
            public float radius;
        }

        /// <summary>How the group's position is calculated</summary>
        public enum PositionMode
        {
            ///<summary>Group position will be the center of the group's axis-aligned bounding box</summary>
            GroupCenter,
            /// <summary>Group position will be the weighted average of the positrions of the members</summary>
            GroupAverage
        }

        /// <summary>How the group's position is calculated</summary>
        [Tooltip("How the group's position is calculated.  Select GroupCenter for the center of the boundingBoc, and GroupAveragve for a weighted average of the positions of the members.")]
        public PositionMode m_PositionMode = PositionMode.GroupCenter;

        /// <summary>How the group's orientation is calculated</summary>
        public enum RotationMode
        {
            /// <summary>Manually set in the group's transform</summary>
            Manual,
            /// <summary>Weighted average of the orientation of its members.</summary>
            GroupAverage
        }

        /// <summary>How the group's orientation is calculated</summary>
        [Tooltip("How the group's rotation is calculated.  Select Manual to use the value in the group's transform, and GroupAveragve for a weighted average of the orientations of the members.")]
        public RotationMode m_RotationMode = RotationMode.Manual;

        /// <summary>The target objects, together with their weights and radii, that will
        /// contribute to the group's average position, orientation, and size</summary>
        [Tooltip("The target objects, together with their weights and radii, that will contribute to the group's average position, orientation, and size.")]
        public Target[] m_Targets = new Target[0];

        /// <summary>The axis-aligned bounding box of the group, computed using the
        /// targets positions and radii</summary>
        public Bounds BoundingBox
        {
            get
            {
                bool gotOne = false;
                Bounds b = new Bounds();
                for (int i = 0; i < m_Targets.Length; ++i)
                {
                    if (m_Targets[i].target != null)
                    {
                        float d = m_Targets[i].radius * 2;
                        Bounds b2 = new Bounds(m_Targets[i].target.position, new Vector3(d, d, d));
                        if (!gotOne)
                            b = b2;
                        else
                            b.Encapsulate(b2);
                        gotOne = true;
                    }
                }
                return b;
            }
        }

        /// <summary>The axis-aligned bounding box of the group, in a specific reference frame</summary>
        /// <param name="mView">The frame of reference in which to compute the bounding box</param>
        /// <returns>The axis-aligned bounding box of the group, in the desired frame of reference</returns>
        public Bounds GetViewSpaceBoundingBox(Matrix4x4 mView)
        {
            Matrix4x4 inverseView = mView.inverse;
            bool gotOne = false;
            Bounds b = new Bounds();
            for (int i = 0; i < m_Targets.Length; ++i)
            {
                if (m_Targets[i].target != null)
                {
                    float d = m_Targets[i].radius * 2;
                    Vector4 p = inverseView.MultiplyPoint3x4(m_Targets[i].target.position);
                    Bounds b2 = new Bounds(p, new Vector3(d, d, d));
                    if (!gotOne)
                        b = b2;
                    else
                        b.Encapsulate(b2);
                    gotOne = true;
                }
            }
            return b;
        }

        Vector3 CalculateAveragePosition()
        {
            Vector3 pos = Vector3.zero;
            float weight = 0;
            for (int i = 0; i < m_Targets.Length; ++i)
            {
                if (m_Targets[i].target != null)
                {
                    weight += m_Targets[i].weight;
                    pos += m_Targets[i].target.position * m_Targets[i].weight;
                }
            }
            if (weight > UnityVectorExtensions.Epsilon)
                pos /= weight;
            return pos;
        }

        Quaternion CalculateAverageOrientation()
        {
            Quaternion r = Quaternion.identity;
            for (int i = 0; i < m_Targets.Length; ++i)
            {
                if (m_Targets[i].target != null)
                {
                    float w = m_Targets[i].weight;
                    Quaternion q = m_Targets[i].target.rotation;
                    // This is probably bogus
                    r = new Quaternion(r.x + q.x * w, r.y + q.y * w, r.z + q.z * w, r.w + q.w * w);
                }
            }
            return r.Normalized();
        }

        private void OnValidate()
        {
            for (int i = 0; i < m_Targets.Length; ++i)
            {
                if (m_Targets[i].weight < 0)
                    m_Targets[i].weight = 0;
                if (m_Targets[i].radius < 0)
                    m_Targets[i].radius = 0;
            }
        }

        private void FixedUpdate()
        {
            Update();
        }

        private void LateUpdate()
        {
            Update();
        }

        private void Update()
        {
            switch (m_PositionMode)
            {
                case PositionMode.GroupCenter:
                    transform.position = BoundingBox.center;
                    break;
                case PositionMode.GroupAverage:
                    transform.position = CalculateAveragePosition();
                    break;
            }
            switch (m_RotationMode)
            {
                case RotationMode.Manual:
                    break;
                case RotationMode.GroupAverage:
                    transform.rotation = CalculateAverageOrientation();
                    break;
            }
        }
    }
}
