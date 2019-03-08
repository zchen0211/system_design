# Implement a Text Line Editor

- Insert a line at a given line number
- Delete the specific set of lines
- Copy specific set of lines
- Paste the copied lines at given index
- Print the entire content
- Undo command

```
class TextLineEditor {
public:
    insert(int pos, const string& line);  // Insert one line and update log
    delete(int pos);  // Remove a line from a specified position and update log
    copy();  // Copy selected lines to d_copiedLines
    paste(int pos); // Paste copied lines into pos and update log
    select(int pos); // Select a line
    unselect(int pos); // unselect a line
    print(); // Print all lines
    undo(); // Undo the last operation
private:
    list<string> d_lines;  // list to store all lines
    set<int> d_selectedLines; // current selection of lines
    set<int> d_copiedLines; // lines that have been copied
    LogManager d_logMgr; // manage all logs
}

struct Log {
    int d_operation; // Either insert or delete or paste
    vector<string> d_lines; // Lines that are involved in this operation
 };

class LogManager {
public:
    pushNewLog(int operation, const vector<string>& lines);
    Log popLastLog(); // Pop the last entry in the log stack
private:
    stack<Log> d_logs;
}
// The downside of this design is, the lines are stored in a linked list, so adding/deleting/accessing a given line takes O(n) to complete.
```
