#WB .csv из Поставки в .csv готовый для УПД Честный Знак Эдо Лайт

1. Перейти в рут папку
cd wbtochz
2. Создать вирт окружение
python/python3/py -m venv venv
3. Активировать его 
source venv/bin/activate  #(или .\venv\Scripts\activate on Windows)
4. Установить зависимости 
pip install -r requirements.txt

5. Внести в папку wildberries csv файлы из поставки

6. Выполнить wbcsv.ipynb 

7. Результат попадет в папки final_csv / final_xlsx

#Windows PowerShell: для того чтобы разрешить активацию вирт окр
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser

Команда для активации setup.ps1
.\setup.ps1 https://github.com/pimpslickbackkk/wbtochz.git
