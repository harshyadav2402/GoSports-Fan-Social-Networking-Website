<?php
	require_once('class-db.php');
	
	if ( !class_exists('INSERT') ) {
		class INSERT {
			public function update_user($user_id, $postdata) {
				global $db;
				
				$table = 'users';
				
				$query = "
								update $table set FirstName='$postdata[FirstName]', LastName='$postdata[LastName]', EmailId='$postdata[EmailId]', country='$postdata[country]', State='$postdata[state]', city='$postdata[city]', Interests='$postdata[Interests]', privacy='$postdata[privacy]', photo='$postdata[photo]
								WHERE username=$user_id
							";

				return $db->update($query);
			}
			
			public function add_friend($user_id, $friend_id) {
				global $db;
				
				$table = 's_friends';
				
				$query = "
								INSERT INTO $table (user_id, friend_id)
								VALUES ('$user_id', '$friend_id')
							";
				
				return $db->insert($query);
			}
			
			public function remove_friend($user_id, $friend_id) {
				global $db;
				
				$table = 's_friends';
				
				$query = "
								DELETE FROM $table 
								WHERE user_id = '$user_id'
								AND friend_id = '$friend_id'
							";
				
				return $db->insert($query);
			}
			
			
			
			
		}
	}
	
	$insert = new INSERT;
?>