#include <DBReader.h>

namespace fs = std::filesystem;

DBReader::DBReader(const std::string& dbPath)
{
  if (fs::exists(dbPath))
  {
    
  }
}

bool DBReader::createDB(const std::string& dbPath)
{
  static const char* query = "CREATE TABLE IF NOT EXISTS client_cred(clientid INTEGER PRIMARY KEY, clientname TEXT, password TEXT, lastupdated TIMESTAMP, active BOOLEAN";
  char* errMsg = nullptr;

  if (sqlite3_exec(_db, query, nullptr, nullptr, errMsg) != SQLITE_OK)
  {
    std::cerr << "" << errMsg << std::endl;
    sqlite3_free(errMsg);
  }
}
