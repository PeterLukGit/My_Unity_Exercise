#pragma once
#include<iostream>
#include<string>
using namespace std;

//職工父類
class Worker
{
public:
	//顯示個人信息
	virtual void ShowInfo() = 0;
	//獲取職位名稱
	virtual string getDetName() = 0;
	//職工編號
	int m_ID;
	//職工名字
	string m_Name;
	//職工所在部門編號
	int m_Detid;
};