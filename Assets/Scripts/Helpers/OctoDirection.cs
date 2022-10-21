/*
* Author : Wyatt Senalik & Steve Datz
* Desc : 
*/

namespace Helpers
{
    public enum eOctoDirection
    {
        INVALID = 0,
        CENTER,
        UP,
        UPRIGHT,
        RIGHT,
        DOWNRIGHT,
        DOWN,
        DOWNLEFT,
        LEFT,
        UPLEFT
    }


    /// <summary>
    /// Extension function for eOctoDirection.
    /// </summary>
    public static class OctoDirectionExtensions
    {
        /// <summary>
        /// Converts the current direction to an angle (on the z axis?).
        /// </summary>
        /// <param name="dir">Direction to convert to an angle.</param>
        public static float GetAngleFromDirection(this eOctoDirection dir)
        {
            float angle = 0;

            switch (dir)
            {
                case eOctoDirection.INVALID:
                    Debugger.Print("Invalid OctoDirection");
                    break;
                case eOctoDirection.CENTER:
                    Debugger.Print($"Center {dir.GetType().Name} not supported for GetAngleFromDirection.");
                    break;
                case eOctoDirection.UP:
                    angle = 90;
                    break;
                case eOctoDirection.UPRIGHT:
                    angle = 45;
                    break;
                case eOctoDirection.RIGHT:
                    angle = 0;
                    break;
                case eOctoDirection.DOWNRIGHT:
                    angle = 315;
                    break;
                case eOctoDirection.DOWN:
                    angle = 270;
                    break;
                case eOctoDirection.DOWNLEFT:
                    angle = 225;
                    break;
                case eOctoDirection.LEFT:
                    angle = 180;
                    break;
                case eOctoDirection.UPLEFT:
                    angle = 135;
                    break;
                default:
                    Debugger.EnumCatch(dir);
                    break;
            }

            return angle;
        }
    }
}
