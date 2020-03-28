/// @DnDAction : YoYo Games.Instance Variables.Set_Score
/// @DnDVersion : 1
/// @DnDHash : 2DCA0177
/// @DnDApplyTo : 178e7158-0f90-4e4c-a325-be197d32d9e6
/// @DnDArgument : "score" "15"
/// @DnDArgument : "score_relative" "1"
with(obj_game_controller) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
__dnd_score += real(15);
}