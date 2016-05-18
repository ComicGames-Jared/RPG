///scr_get_input
up_key = keyboard_check(ord('W'));
left_key = keyboard_check(ord('A'));
down_key = keyboard_check(ord('S'));
right_key = keyboard_check(ord('D'));
dash_key = keyboard_check_pressed(ord('C'));
attack_key = keyboard_check_pressed(ord('E'));
restart_key = keyboard_check_pressed(ord('R'));
pause_key = keyboard_check_pressed(vk_escape);
spell_key = keyboard_check_pressed(ord("F"));

//get the axis
xaxis = (right_key - left_key)
yaxis = (down_key - up_key)

//gamepad input
if (gamepad_is_connected(0)) {
  gamepad_set_axis_deadzone(0, .35);
  xaxis = gamepad_axis_value(0, gp_axislh);
  yaxis = gamepad_axis_value(0, gp_axislh);
  dash_key = gamepad_button_check(0, gp_face2);
  attack_key = gamepad_button_check(0, gp_shoulderrb);
  spell_key = gamepad_button_check(0, gp_face3);
  pause_key = gamepad_button_check_pressed(0, gp_start);
}
