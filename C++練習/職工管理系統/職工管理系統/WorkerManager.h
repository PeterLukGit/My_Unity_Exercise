#pragma once //防止標頭檔重複
#include<iostream>
using namespace std;
#include "Worker.h"
#include <fstream>

//文件常數
#define FILENAME "empFile.txt"

class WorkerManager
{
public://公開的變數或函數

	WorkerManager();//建構子

	~WorkerManager();//解構子

	//紀錄文件中職員個數
	int m_EmpNum;
	//職員數組指針
	Worker**  m_EmpArray;

	//文件是否為空
	bool m_FileIsEmpty;

	//顯示菜單
	void ShowMenu();

	//退出菜單
	void ExitMenu();

	//增加職工
	void Add_Emp();

	//保存文件
	void Save();

	//讀取資料數量
	int get_EmpNum();

	//初始化資料
	void init_Emp();

	//顯示職工
	void Show_Emp();

	//刪除職工
	void Del_Emp();

	//檢查該ID有沒有存在
	int IsExist(int id);

	//修改
	void Mod_Emp();

	//查詢
	void Find_Emp();

	//排列
	void Sort_Emp();

	//清空
	void Clean_File();
};