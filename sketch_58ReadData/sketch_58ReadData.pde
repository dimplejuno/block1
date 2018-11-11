Table stats;
// Boston Red Sox player David Ortiz’s batting statistics
/*
void setup() {
  stats = loadTable("ortiz.csv");
  for (int i = 0; i < stats.getRowCount(); i++) {
    // Gets an integer from row i, column 0 in the file
    int year = stats.getInt(i, 0);
    // Gets the integer from row i, column 1
    int homeRuns = stats.getInt(i, 1);
    int rbi = stats.getInt(i, 2);
    // Read a number that includes decimal points
    float average = stats.getFloat(i, 3);
    println(year, homeRuns, rbi, average);
  }
}
*/

void setup() {
  stats = loadTable("world_cup_2018_stats.csv");
  for (int i = 1; i < stats.getRowCount(); i++) {
    // Gets an integer from row i, column 0 in the file
    int game = stats.getInt(i, 0);
    // Gets the integer from row i, column 1
    String group = stats.getString(i, 1);
    String team = stats.getString(i, 2);
    // Read a number that includes decimal points
    String Opponent = stats.getString(i, 3);
    println(game, group, team, Opponent);
  }
}