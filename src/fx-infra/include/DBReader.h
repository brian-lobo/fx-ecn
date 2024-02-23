#pragma once

#include <sqlite3.h>

class DBReader
{
  public:
    DBReader(const std::string& dbPath);

  private:
    sqlite3* _db;
};
