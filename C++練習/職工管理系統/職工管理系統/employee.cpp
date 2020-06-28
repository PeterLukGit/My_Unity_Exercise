#include "employee.h"

Employee::Employee(int id, string name, int did)
{
	//案例教的
	//this->m_ID =  id;
	//this->m_Name = name;
	//this->m_Detid = did;

	//實際上這樣也行
	m_ID = id;
	m_Name = name;
	m_Detid = did;
}

void Employee::ShowInfo()
{
	//輸出
	cout << "職工編號 : " << m_ID << "\t"
		<< "員工姓名 : " << m_Name << "\t"
		<< "崗位 : " << m_Detid << "\t"
		<< "崗位職責 : 完成經理交代的事" << endl;
}

string Employee::getDetName()
{
	//輸出崗位
	return "員工";
}