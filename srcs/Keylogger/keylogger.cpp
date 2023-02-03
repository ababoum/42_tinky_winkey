#include <winuser.h>
#include <iostream>

int main()
{
	HWND handle = GetForegroundWindow();

	if (handle == NULL)
	{
		std::cout << "GetForegroundWindow failed" << std::endl;
		return 1;
	}

	char window_title[256];
	GetWindowText(handle, window_title, sizeof(window_title));

	std::cout << "Active window title: " << window_title << std::endl;

	return 0;
}
