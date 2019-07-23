if (file_exists("Save.sav"))
{
    ini_open("Save.sav");
    global.money = ini_read_real("Save1","money",2000);
     global.maxmana = ini_read_real("Save1","maxmana",10);
      global.maxhp = ini_read_real("Save1","maxhp",25);
       global.level = ini_read_real("Save1","level",1);
        global.maxexpr = ini_read_real("Save1","maxexpr",25);
         global.manaprice = ini_read_real("Save1","manaprice",250);
          global.lifeprice = ini_read_real("Save1","lifeprice",250);
            global.boss = ini_read_real("Save1","boss",0);
    ini_close();
    room_goto(rm_startscreen);
}
else
{
    //do nothing
}
