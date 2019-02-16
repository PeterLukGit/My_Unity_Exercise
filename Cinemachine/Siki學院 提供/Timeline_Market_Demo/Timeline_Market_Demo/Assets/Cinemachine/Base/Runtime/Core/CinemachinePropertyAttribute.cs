using UnityEngine;

namespace Cinemachine
{
    /// <summary>
    /// Property applied to <see cref="LensSettings"/>.
    /// </summary>
    public sealed class LensSettingsPropertyAttribute : PropertyAttribute
    {
    }
        /// <summary>
    /// Property applied to <see cref="CinemachineBlendDefinition"/>.
    /// </summary>
    public sealed class CinemachineBlendDefinitionPropertyAttribute : PropertyAttribute
    {
    }

    /// <summary>
    /// Invoke live-save for a class.  This class's properties will be scanned
    /// upon exiting pla mode, and its property values will be applied to the scene object.
    /// This is a stopgap measure that will become obsolete once Unity implements
    /// play-mode save in a more general way.
    /// </summary>
    public sealed class SaveDuringPlayAttribute : System.Attribute
    {
    }

    /// <summary>
    /// Suppresses play-mode-save for a property
    /// </summary>
    public sealed class NoSaveDuringPlayAttribute : PropertyAttribute
    {
    }

    /// <summary>
    /// Specify a minimum value on an int, float, or vector
    /// </summary>
    public sealed class MinAttribute : PropertyAttribute
    {
        public readonly float min;
        public MinAttribute(float min)
        {
            this.min = min;
        }
    }

    /// <summary>
    /// Get the inspector to invoke Get/Set property accessors for a field
    /// </summary>
    public sealed class GetSetAttribute : PropertyAttribute
    {
        public readonly string name;
        public bool dirty;
        public GetSetAttribute(string name)
        {
            this.name = name;
        }
    }

    public sealed class DocumentationSortingAttribute : System.Attribute
    {
        public enum Level { Undoc, API, UserRef };
        public float SortOrder { get; private set; }
        public Level Category { get; private set; }
        public DocumentationSortingAttribute(float sortOrder, Level category)
        {
            SortOrder = sortOrder;
            Category = category;
        }
    }
}
