//Get inputs
keyLeft = keyboard_check(ord("A")) || keyboard_check(vk_left)
keyRight = keyboard_check(ord("D")) || keyboard_check(vk_right)


xspd = (keyRight-keyLeft) * movespd

x += xspd