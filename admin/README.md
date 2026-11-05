# Dhaka Gadget Grove Admin

Standalone admin SPA. Deploy this folder as a separate Vercel project by setting **Root Directory** to `admin`.

## Local setup

```bash
npm install
cp .env.example .env.local
npm run dev
```

Set `VITE_SUPABASE_URL` and `VITE_SUPABASE_PUBLISHABLE_KEY`. No service-role key is needed or accepted by this client app.

## Create the first admin

1. Create the owner's user in Supabase Authentication.
2. Copy the user's UUID.
3. In Supabase SQL Editor run:

```sql
insert into public.user_roles (user_id, role)
values ('OWNER_AUTH_USER_UUID', 'admin')
on conflict (user_id, role) do nothing;
```

Never provide public admin registration. The app checks `user_roles` after sign-in and database RLS remains the authorization boundary.
