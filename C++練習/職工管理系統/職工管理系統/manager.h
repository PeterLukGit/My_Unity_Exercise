#pragma once
#include<iostream>
#include<string>
using namespace std;
#include "Worker.h";

class Manager :public Worker
{
public:
	//建構子
	Manager(int id, string name, int did);

	//顯示個人信息
	void ShowInfo();

	//獲取職位名稱
	string getDetName();
};
