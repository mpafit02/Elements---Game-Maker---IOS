if (file_exists("Save.sav")) file_delete("Save.sav");
ini_open("Save.sav");
ini_write_real("Save1","money",global.money);
ini_write_real("Save1","maxmana",global.maxmana);
ini_write_real("Save1","maxhp",global.maxhp);
ini_write_real("Save1","level",global.level);
ini_write_real("Save1","maxexpr",global.maxexpr);
ini_write_real("Save1","manaprice",global.manaprice);
ini_write_real("Save1","lifeprice",global.lifeprice);
if room= rm_boss{
ini_write_real("Save1","boss",global.boss);
}
ini_close();
