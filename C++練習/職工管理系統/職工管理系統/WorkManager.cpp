#include  "WorkerManager.h"
#include "employee.h"
#include "manager.h"
#include "boss.h"
#include "Worker.h"
#include<string>

//建構時，執行初始化
WorkerManager::WorkerManager()
{
	//讀取文件------------------------------------------

	//讀入流
	ifstream ifs;
	// ios::in檔案開啟為讀取(輸入)狀態
	ifs.open(FILENAME, ios::in);

	//1.文件不存在的話，初始化
	if (ifs.is_open() == false)
	{
		cout << "文件不存在" << endl;
		m_FileIsEmpty = true;
		m_EmpNum = 0;
		m_EmpArray = NULL;
		ifs.close();
		return;
	}

	//2.文件存在，但是為空白
	char ch;
	//這意思是，把文件的第一個文字放入變數
	//如果有，文件就不是空白，沒有，就是空白
	ifs >> ch;
	if (ifs.eof() == true)
	{
		cout << "文件為空白" << endl;
		m_FileIsEmpty = true;
		m_EmpNum = 0;
		m_EmpArray = NULL;
		ifs.close();
		return;
	}

	//3.這邊是上述情況都過後，就代表有資料
	//拿取資料總數
	int num = get_EmpNum();
	m_EmpNum = num;
	//新增陣列
	m_EmpArray = new Worker *[this->m_EmpNum];
	//初始化陣列
	init_Emp();

	//讀取文件結束------------------------------------------
}

WorkerManager::~WorkerManager()
{
	//解構子執行的演算

	//當結束執行，釋放陣列
	if (m_EmpArray != NULL)
	{
		delete[] m_EmpArray;
	}
}

//顯示菜單
void WorkerManager::ShowMenu()
{
	cout << "***************************************** " << endl;
	cout << "***********歡迎使用職工管理系統！******** " << endl;
	cout << "************* 0.退出管理程序************* " << endl;
	cout << "************* 1.增加職工信息************* " << endl;
	cout << "************* 2.顯示職工信息************* " << endl;
	cout << "************* 3.刪除離職職工************* " << endl;
	cout << "************* 4.修改職工信息************* " << endl;
	cout << "************* 5.查找職工信息************* " << endl;
	cout << "************* 6.按照編號排序************* " << endl;
	cout << "************* 7.清空所有文檔************* " << endl;
	cout << "***************************************** " << endl;
	cout << endl;
}

//退出菜單
void WorkerManager::ExitMenu()
{
	cout << "歡迎下次使用" << endl;
	system("pause");
	exit(0);//結束
}

//增加職員
void WorkerManager::Add_Emp()
{
	cout << "輸入要增加數量" << endl;

	//新的數量
	int AddNum = 0;

	cin >> AddNum;

	if (AddNum > 0)
	{
		//計算新陣列數量
		int newSize = m_EmpNum + AddNum;

		//新陣列
		Worker ** newArray = new Worker*[newSize];

		//將舊陣列放入新陣列
		if (m_EmpArray != NULL)
		{
			for (int i = 0; i < m_EmpNum; i++)
			{
				newArray[i] = m_EmpArray[i];
			}
		}

		//輸入新數據
		for (int i = 0; i < AddNum; i++)
		{
			int id;
			string name;
			int dSelect;

			cout << "輸入第" << i + 1 << "新員工編號" << endl;
			cin >> id;

			cout << "輸入第" << i + 1 << "新員工名字" << endl;
			cin >> name;

			cout << "請選擇員工崗位：" << endl;
			cout << "1、普通員工" << endl;
			cout << "2、經理" << endl;
			cout << "3、老闆" << endl;
			cin >> dSelect;

			Worker * worker = NULL;

			switch (dSelect)
			{
			case 1:
				worker = new Employee(id, name, 1);
				break;
			case 2:
				worker = new Manager(id, name, 2);
				break;
			case 3:
				worker = new Boss(id, name, 3);
				break;
			default:
				cout << "崗位 : 輸入錯誤，強制中止" << endl;
				delete[] newArray;
				system("pause");
				system("cls");
				return;
			}

			newArray[m_EmpNum + i] = worker;
		}

		//刪除舊陣列
		delete[] m_EmpArray;

		//將指針更新到新陣列
		m_EmpArray = newArray;
		//更新陣列個數
		m_EmpNum = newSize;

		cout << "新增成功" << AddNum << "名員工" << endl;

		m_FileIsEmpty = false;
	}
	else
	{
		cout << "輸入錯誤" << endl;
	}

	Save();

	system("pause");
	system("cls");
}

//保存文件
void WorkerManager::Save()
{
	//寫，文件流
	ofstream ofs;
	//ios::out檔案開啟為寫入(輸出)狀態
	ofs.open(FILENAME, ios::out);

	//寫陣列
	for (int i = 0; i < m_EmpNum; i++)
	{
		//cout << this->m_EmpArray[i]->m_ID << " "
		//		<< this->m_EmpArray[i]->m_Name << " "
		//		<< this->m_EmpArray[i]->m_Detid << endl;

		ofs << this->m_EmpArray[i]->m_ID << " "
			<< this->m_EmpArray[i]->m_Name << " "
			<< this->m_EmpArray[i]->m_Detid << endl;
	}

	//關閉文件流
	ofs.close();
}

//讀取資料，並確認有多少筆資料
int WorkerManager::get_EmpNum()
{
	ifstream ifs;
	ifs.open(FILENAME, ios::in);

	int id;
	string name;
	int did;

	int num = 0;

	//這邊意思是
	//ifs讀取 連續資料，直到遇到空白(" "<<就是這個)
	//連續三個資料為 ID Name 崗位
	//當三個都存在時 資料數+1
	while (ifs >> id && ifs >> name && ifs >> did)
	{
		num++;
	}

	ifs.close();

	return num;
}

//初始化陣列
void WorkerManager::init_Emp()
{
	ifstream ifs;
	ifs.open(FILENAME, ios::in);

	int id;
	string name;
	int did;

	int index = 0;

	while (ifs >> id && ifs >> name && ifs >> did)
	{
		Worker * worker = NULL;

		if (did == 1)
		{
			worker = new Employee(id, name, did);
		}
		else if (did == 2)
		{
			worker = new Manager(id, name, did);
		}
		else
		{
			worker = new Boss(id, name, did);
		}

		m_EmpArray[index] = worker;
		index++;
	}
}

//顯示資料
void WorkerManager::Show_Emp()
{
	if (m_FileIsEmpty == true)
	{
		cout << "文件不存在或沒資料" << endl;
	}
	else
	{
		for (int i = 0; i < m_EmpNum; i++)
		{
			m_EmpArray[i]->ShowInfo();
		}
	}

	system("pause");
	system("cls");
}

int WorkerManager::IsExist(int id)
{
	//檢查ID是否在陣列裡，
	//有，返回位置，
	//沒有返回-1
	//因為只會返回一個，所以

	int index = -1;

	for (int i = 0; i < m_EmpNum; i++)
	{
		if (m_EmpArray[i]->m_ID == id)
		{
			index = i;
			break;
		}
	}

	return index;
}

void WorkerManager::Del_Emp()
{
	if (m_FileIsEmpty == true)
	{
		cout << "文件不存在或沒資料" << endl;
	}
	else
	{
		cout << "輸入要刪除的ID" << endl;

		int id = 0;
		cin >> id;

		int index = IsExist(id);

		if (index != -1)
		{
			//這邊是直接把第一個碰到的ID刪除，
			//所以有重複的ID也只會刪除一個
			for (int i = index; i < m_EmpNum - 1; i++)
			{
				m_EmpArray[i] = m_EmpArray[i + 1];
			}
			m_EmpNum--;
			Save();
			cout << "刪除成功" << endl;
		}
		else
		{
			cout << "刪除失敗，ID不存在" << endl;
		}
	}

	system("pause");
	system("cls");
}

//修改資料
void WorkerManager::Mod_Emp()
{
	if (m_FileIsEmpty == true)
	{
		cout << "文件不存在或沒資料" << endl;
	}
	else
	{
		cout << "輸入修改的 ID！" << endl;

		int ID = 0;
		cin >> ID;

		//確認ID 陣列位置
		int ref = IsExist(ID);

		if (ref != -1)
		{
			delete m_EmpArray[ref];

			int new_id = 0;
			string new_name = "";
			int newdSelect = 0;

			cout << "輸入新員工編號" << endl;
			cin >> new_id;

			cout << "輸入新員工名字" << endl;
			cin >> new_name;

			cout << "請選擇員工崗位：" << endl;
			cout << "1、普通員工" << endl;
			cout << "2、經理" << endl;
			cout << "3、老闆" << endl;
			cin >> newdSelect;

			Worker * worker = NULL;

			switch (newdSelect)
			{
			case 1:
				worker = new Employee(new_id, new_name, 1);
				break;
			case 2:
				worker = new Manager(new_id, new_name, 2);
				break;
			case 3:
				worker = new Boss(new_id, new_name, 3);
				break;
			default:
				cout << "崗位 : 輸入錯誤，強制中止" << endl;
				system("pause");
				system("cls");
				return;
			}

			m_EmpArray[ref] = worker;

			cout << "修改成功！" << endl;

			Save();
		}
		else
		{
			cout << "修改失敗！查無編號" << endl;
		}
	}

	system("pause");
	system("cls");
}

void WorkerManager::Find_Emp()
{
	if (m_FileIsEmpty == true)
	{
		cout << "文件不存在或沒資料" << endl;
	}
	else
	{
		cout << "請輸入找方式：" << endl;
		cout << "1、按職工ID" << endl;
		cout << "2、按姓名查找" << endl;

		int select = 0;
		cin >> select;

		//用ID去找，一樣調用IsExist
		//所以只會返回一個，所以有ID重複不會顯示
		if (select == 1)
		{
			int id = 0;
			cout << "輸入ID！" << endl;
			cin >> id;

			int ret = IsExist(id);

			if (ret != -1)
			{
				cout << "查尋成功！" << endl;
				m_EmpArray[ret]->ShowInfo();
			}
			else
			{
				cout << "查無ID！" << endl;
			}
		}
		else if (select == 2)
		{
			//用名字找
			string name = "";
			cout << "輸入名字！" << endl;
			cin >> name;

			bool flag = false;

			//因為用For搜尋
			//所以重複地也會跑出來
			for (int i = 0; i < m_EmpNum; i++)
			{
				if (m_EmpArray[i]->m_Name == name)
				{
					cout << "查詢成功！" << endl;

					m_EmpArray[i]->ShowInfo();

					flag = true;
				}
			}

			if (flag == false)
			{
				cout << "查無名字！" << endl;
			}
		}
		else
		{
			cout << "輸入錯誤！" << endl;
		}
	}

	system("pause");
	system("cls");
}

void WorkerManager::Sort_Emp()
{
	if (m_FileIsEmpty == true)
	{
		cout << "文件不存在或沒資料" << endl;
	}
	else
	{
		cout << "選擇排序方式： " << endl;
		cout << "1、ID升序排列" << endl;
		cout << "2、ID降序排列" << endl;

		int select = 0;
		cin >> select;

		//說明下排序方式
		//其實很簡單，
		//就是For迴圈找陣列，把最大或最小抓出來
		//然後塞到最前面的位子
		for (int i = 0; i < m_EmpNum; i++)
		{
			int minOrmax = i;

			//找大小
			for (int j = i + 1; j < m_EmpNum; j++)
			{
				if (select == 1)
				{
					if (m_EmpArray[minOrmax]->m_ID > m_EmpArray[j]->m_ID)
					{
						minOrmax = j;
					}
				}
				else if (select == 2)
				{
					if (m_EmpArray[minOrmax]->m_ID < m_EmpArray[j]->m_ID)
					{
						minOrmax = j;
					}
				}
				else
				{
					cout << "輸入錯誤 " << endl;
					system("pause");
					system("cls");
					return;
				}
			}

			//換位子
			if (i != minOrmax)
			{
				Worker * temp = m_EmpArray[i];
				m_EmpArray[i] = m_EmpArray[minOrmax];
				m_EmpArray[minOrmax] = temp;
			}
		}

		cout << "排列完成" << endl;
		Save();
		Show_Emp();
	}
}

void WorkerManager::Clean_File()
{
	cout << "確認清空？" << endl;
	cout << "1、確定" << endl;
	cout << "2、返回" << endl;

	int select = 0;
	cin >> select;

	if (select == 1)
	{
		//ios::trunc 如果檔案存在，就清除檔案 內容的資料
		//先清除文件，在清除陣列
		ofstream ofs(FILENAME, ios::trunc);
		ofs.close();

		if (m_EmpArray != NULL)
		{
			//清除陣列裡的資料
			//如果直接刪除 Worker**  m_EmpArray 陣列，
			//裡面的資料並不會刪除，
			//裡面的數據會變成，永遠找不到的資料(因為指標不見了)
			for (int i = 0; i < m_EmpNum; i++)
			{
				if (m_EmpArray[i] != NULL)
				{
					delete m_EmpArray[i];
				}
			}

			m_EmpNum = 0;
			delete[] m_EmpArray;
			m_EmpArray = NULL;
			m_FileIsEmpty = true;
		}

		cout << "刪除成功！" << endl;
	}

	system("pause");
	system("cls");
}

int main() {
	WorkerManager manager;

	//輸入的選擇
	int choice = 0;

	//無限迴圈
	while (true)
	{
		//顯示菜單
		manager.ShowMenu();
		cout << "請輸入指令" << endl;
		cin >> choice;

		//執行指令
		switch (choice)
		{
		case 0://退出管理程序
			manager.ExitMenu();
			break;
		case 1://增加職工信息
			manager.Add_Emp();
			break;
		case 2://顯示職工信息
			manager.Show_Emp();
			break;
		case 3://刪除離職職工
			manager.Del_Emp();
			break;
		case 4://修改職工信息
			manager.Mod_Emp();
			break;
		case 5://查找職工信息
			manager.Find_Emp();
			break;
		case 6://按照編號排序
			manager.Sort_Emp();
			break;
		case 7://清空所有文檔
			manager.Clean_File();
			break;
		default:
			system("cls");
			//清除畫面
			break;
		}
	}

	system("pause");

	return 0;
}