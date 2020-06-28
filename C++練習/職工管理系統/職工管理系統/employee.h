#pragma once
#include<iostream>
#include<string>
using namespace std;
#include "Worker.h";

//員工
class Employee : public Worker
{
public:
	//建構子
	Employee(int id, string name, int did);

	//顯示個人信息
	void ShowInfo();

	//獲取職位名稱
	string getDetName();
};
