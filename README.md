#WB .csv из Поставки в .csv готовый для УПД Честный Знак Эдо Лайт

В Activation Scripts/ есть скрипт для быстрого запуска и конфигурации Windows: VSCode Python venv и тд
1. Windows PowerShell: для того чтобы разрешить активацию вирт окр
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
2. Скачать setup.ps1 с github repo https://github.com/pimpslickbackkk/wbtochz/Activation Scripts/
Команда в PowerShell для активации setup.ps1
.\setup.ps1 https://github.com/pimpslickbackkk/wbtochz.git
git config --global user.email arvahmatov@gmail.com
git config --global user.name pimpslickbackkk

or

1. Перейти в рут папку
cd wbtochz
2. Создать вирт окружение / или сразу 3. пункт 
python/python3/py -m venv venv
3. Активировать его 
source wbtochz/venv/bin/activate   #(или .\venv\Scripts\activate on Windows)
4. Установить зависимости 
pip install -r requirements.txt

5. Внести в папку /wildberries csv файлы из поставки назвав их [*ДатаОтгруки(ДатаПриемкиВБ).csv]
wildberries/Buyer1 = Vlad, Buyer2 = Anna, Buyer3 = Katya

6. Выполнить GO.ipynb 

7. Результат попадет в папки XML/BuyerID 
    Если КИЗ не заригистрирован в нашем Каталоге ЧЗ, то он попадет в Orphans/BuyerID/[*date_orphan.csv]
    Если КИЗ был поставлен не тому покупателю, то он попадет в Orphans/BuyerID/[*date_wrongID.csv]



