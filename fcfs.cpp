#include <iostream>
#include <iomanip>

using namespace std;

class Process {
public:
    int id;
    int bt;
    int at;
    int ct;
    int tat;
    int wt;

    Process() : id(0), bt(0), at(0), ct(0), tat(0), wt(0) {}
};

void calculateCompletionTime(Process proc[], int n) {
    int currentTime = 0;
    for (int i = 0; i < n; ++i) {
        if (currentTime < proc[i].at)
            currentTime = proc[i].at;
        currentTime += proc[i].bt;
        proc[i].ct = currentTime;
    }
}

void calculateTurnaroundTime(Process proc[], int n) {
    for (int i = 0; i < n; ++i)
        proc[i].tat = proc[i].ct - proc[i].at;
}

void calculateWaitingTime(Process proc[], int n) {
    for (int i = 0; i < n; ++i)
        proc[i].wt = proc[i].tat - proc[i].bt;
}

int main() {
    int n, choice;
    cout << "Enter the number of processes: ";
    cin >> n;

    Process proc[n];

    cout << "Choose the mode for arrival times:\n";
    cout << "1. Arrival time for all processes = 0\n";
    cout << "2. Specify arrival time and burst time for each process\n";
    cout << "Enter your choice (1/2): ";
    cin >> choice;

    switch (choice) {
        case 1:
            for (int i = 0; i < n; i++) {
                proc[i].id = i + 1;
                proc[i].at = 0;
                cout << "Enter burst time for process " << i + 1 << ": ";
                cin >> proc[i].bt;
            }
            break;
        case 2:
            cout << "Enter arrival time and burst time for each process:\n";
            for (int i = 0; i < n; i++) {
                proc[i].id = i + 1;
                cout << "Process " << i + 1 << " - Arrival Time: ";
                cin >> proc[i].at;
                cout << "Process " << i + 1 << " - Burst Time: ";
                cin >> proc[i].bt;
            }
            break;
        default:
            cout << "Invalid choice. Exiting program.\n";
            return 1;
    }

    calculateCompletionTime(proc, n);
    calculateTurnaroundTime(proc, n);
    calculateWaitingTime(proc, n);

    cout << left << setw(10) << "Process" << setw(15) << "Arrival Time" << setw(15) << "Burst Time" << setw(20) << "Completion Time" << setw(20) << "Turnaround Time" << setw(15) << "Waiting Time" << endl;
    for (int i = 0; i < n; i++) {
        cout << left << setw(10) << proc[i].id << setw(15) << proc[i].at << setw(15) << proc[i].bt << setw(20) << proc[i].ct << setw(20) << proc[i].tat << setw(15) << proc[i].wt << endl;
    }

    // Calculate average turnaround time and average waiting time
    double totalTAT = 0, totalWT = 0;
    for (int i = 0; i < n; i++) {
        totalTAT += proc[i].tat;
        totalWT += proc[i].wt;
    }
    cout << "Average Turnaround Time = " << totalTAT / n << endl;
    cout << "Average Waiting Time = " << totalWT / n << endl;

    return 0;
}