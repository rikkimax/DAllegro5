module allegro5.blender;

extern(C)
{
	enum ALLEGRO_BLEND_MODE
	{
		ALLEGRO_ZERO = 0,
		ALLEGRO_ONE = 1,
		ALLEGRO_ALPHA = 2,
		ALLEGRO_INVERSE_ALPHA = 3
	}
	
	enum ALLEGRO_BLEND_OPERATIONS
	{
		ALLEGRO_ADD = 0,
		ALLEGRO_SRC_MINUS_DEST = 1,
		ALLEGRO_DEST_MINUS_SRC = 2,
		ALLEGRO_NUM_BLEND_OPERATIONS
	}

	void al_set_blender(int op, int source, int dest);
	void al_get_blender(int* op, int* source, int* dest);
	void al_set_separate_blender(int op, int source, int dest, int alpha_op, int alpha_source, int alpha_dest);
	void al_get_separate_blender(int* op, int* source, int* dest, int *alpha_op, int* alpha_src, int* alpha_dest);
}
