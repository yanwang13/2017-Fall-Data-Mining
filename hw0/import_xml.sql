LOAD XML LOCAL INFILE 'C:\\Users\\User\\Desktop\\C-B0024-002.xml'
INTO TABLE weather
ROWS IDENTIFIED BY '<weatherElement>';