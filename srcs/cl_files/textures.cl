#include "kernel.hl"

float3			get_color_sphere(t_obj *object, float3 hitpoint, t_scene *scene)
{
	float3		vect;
	__global t_txture	*texture;
	float		u;
	float		v;
	int			i;

	vect = normalize(hitpoint - object->position);
	/*FOR SVIBORG*/
	u = vect[2];
	vect[2] = vect[0];
	vect[0] = u;
	/*FOR SVIBORG*/
	u = 0.5 + (atan2(vect[2], vect[0])) / (2 * PI);
	v = 0.5 - (asin(vect[1])) / PI;
	texture = &((scene->textures)[object->texture - 1]);
	i = ((int)(v * (float)(texture->height - 1))) * (texture->width) + (int)(u * (float)(texture->width - 1));
	return(cl_int_to_float3(texture->texture[i]));
}

float3					get_color_plane(t_obj *object, float3 hitpoint, t_scene *scene)
{
	float3				vect;
	float3				secvect;
	__global t_txture	*texture;
	float				u;
	float				v;
	int					i;

	if (object->v[0] != 0.0f || object->v[1] != 0.0f)
		vect = normalize((float3){object->v[1], -object->v[0], 0});
	else
		vect = (float3){0.0f, 1.0f, 0.0f};
	// hitpoint = normalize(hitpoint);
	secvect = cross(vect, object->v);
	u = modf((0.5 + dot(vect, hitpoint) / 2), &u);
	v = modf((0.5 + dot(secvect, hitpoint) / 2), &v);
	if (v < 0)
		v += 1;
	if (u < 0)
		u += 1;
	texture = &((scene->textures)[object->texture - 1]);
	i = ((int)(v * (float)(texture->height - 1))) * (texture->width) + (int)(u * (float)(texture->width - 1));
	return(cl_int_to_float3(texture->texture[i]));
}

float3          get_color_cylinder(t_obj *object, float3 hitpoint, t_scene *scene)
{
	float3		vect;
	__global t_txture	*texture;
	float		u;
	float		v;
	int			i;
	float		a;

	vect = normalize(hitpoint - object->position);
	// u = 0.5 + (atan2(vect[2], vect[0])) / (2 * PI);
	u = 0.5 + (atan2(vect[2], vect[0])) / (2 * PI);
	texture = &((scene->textures)[object->texture - 1]);
	v = modf(0.5 + (hitpoint[1] * 1000 / texture->height) / 2, &v);
	if (v < 0)
		v = 1 + v;
	// if (modf(hitpoint[1] * 1000 / texture->height, &a) < 0.0 && get_global_id(0) % 5 == 1)
	// 	printf("%f\n", modf(hitpoint[1] * 1000 / texture->height, &a));
	// v = v < 0 ? 1 + v : v;
	i = ((int)(v * (float)(texture->height - 1))) * (texture->width) + (int)(u * (float)(texture->width - 1));
	return(cl_int_to_float3(texture->texture[i]));
}

float3			get_color(t_obj *object, float3 hitpoint, t_scene *scene)
{
	if (object->texture > 0)
	{
		if (object->type == SPHERE)
			return(get_color_sphere(object, hitpoint, scene));
		if (object->type == CYLINDER)
			return(get_color_cylinder(object, hitpoint, scene));
		if (object->type == PLANE)
			return(get_color_plane(object, hitpoint, scene));
		return (object->color);
	}
	else
		return (object->color);
}

float3			global_texture(t_ray *ray, t_scene *scene)
{
	float3		vect;
	__global t_txture	*texture;
	float		u;
	float		v;
	int			i;

	vect = ray->dir;
	/*FOR SVIBORG*/
	u = vect[2];
	vect[2] = vect[0];
	vect[0] = u;
	/*FOR SVIBORG*/
	u = 0.5 + (atan2(vect[2], vect[0])) / (2 * PI);
	v = 0.5 - (asin(vect[1])) / PI;
	texture = &((scene->textures)[1]);
	i = ((int)(v * (float)(texture->height - 1))) * (texture->width) + (int)(u * (float)(texture->width - 1));
	return(cl_int_to_float3(texture->texture[i]));
}