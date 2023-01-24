#! /bin/bash
func1()
{
  echo --all - displays the IP addresses and symbolic names of all hosts in the current subnet
  echo --target - displays a list of open system TCP ports
}

func2()
{
 cat /etc/hosts | grep "192.168.1.*"
}

func3()
{
  netstat -tln
}


if [ "$1" = "--all" ]; then
  func2
  elif [ "$1" = "--target" ]; then
    func3
else
  func1
fi
