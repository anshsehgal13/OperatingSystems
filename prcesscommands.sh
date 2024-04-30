list_processes() {
	echo "List all processes: "
	ps
	}
	
process_info() {
	read -p "Enter process i: " pid
	echo "Info about process : "
	ps -p $pid
}

global_priority(){
	read -p "Enter pid of process : " pid
	echo "Global priority is : "
	ps -p $pid -o pid,pri
	}
	
change_priority(){
	read -p "Enter pid : " pid
	read -p "Enter new priority : " priority
	priority=${#priority:-10}
	renice $priority $pid
	echo "New priority of $pid is $priority"
	}
	
while true; do
echo "1. List processes"
echo "2. Info about cuurent process"
echo "3. global priority"
echo "4. Change priority (default:10)"
echo "5. exit"
read -p "Enter ur choice : " choice

case $choice in 
	1) list_processes;;
	2) process_info;;
	3) global_priority;;
	4) change_priority;;
	5) echo "Exiting" ; exit;;
	*) echo "Invalid option" ;;
esac
done
