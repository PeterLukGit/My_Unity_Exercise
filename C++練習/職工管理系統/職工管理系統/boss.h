#pragma once
#include<iostream>
#include<string>
using namespace std;
#include "Worker.h";

class Boss :public Worker
{
public:
	//建構子
	Boss(int id, string name, int did);

	//顯示個人信息
	void ShowInfo();

	//獲取職位名稱
	string getDetName();
};