function idleRotation( angle : float )
{
	var rotationAngle : float;
	
	if ( angle >= 45 )
		{
			if ( angle >= 135 )
			{
				rotationAngle = 0;
			}
			/*else if ( angle >= 135 )
			{
				rotationAngle = 1;
			}
			else if ( angle >= 90 )
			{
				rotationAngle = 2;
			}*/
			else
			{
				rotationAngle = 2; //3
			}
		}
	else if ( angle <= -45 )
		{
			if ( angle <= -135 )
			{
				rotationAngle = 7;
			}
			/*else if ( angle <= -135 )
			{
				rotationAngle = 6;
			}
			else if ( angle <= -90 )
			{
				rotationAngle = 5;
			}*/
			else
			{
				rotationAngle = 5; //4
			}
		}
	else
		{
			return;
		}
	
	thePlayer.SetBehaviorVariable( 'rotateAngle', (int) rotationAngle );
	
	if ( theInput.LastUsedPCInput() && theInput.IsActionPressed('E3ARPRotate') )
	{
		thePlayer.RaiseEvent ( 'Rotate' );
	}
}
