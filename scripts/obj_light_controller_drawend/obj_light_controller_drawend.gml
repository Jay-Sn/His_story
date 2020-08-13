// Draw the surface or create a new one
// Be sure to use views, even if it isn't necessary for your game
// This trick bypasses an issue with resizing the game window
// DX requires that surfaces be destroyed when resizing
if (!surface_exists(surf)) {
    surf = surface_create(room_width, room_height);
} else {
    if (view_current == 0) {
        draw_surface(surf, 0, 0);
    }
}