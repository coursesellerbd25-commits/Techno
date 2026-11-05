# Project guidance

- Preserve Bangla-first customer-facing copy and the Dhaka Gadget Grove brand palette.
- Never commit `.env` files or expose `SUPABASE_SERVICE_ROLE_KEY` to browser code.
- Storefront and admin are separate Vercel deployments sharing one Supabase project.
- Admin access must be checked against `public.user_roles` and enforced by Supabase RLS, not merely hidden in the UI.
- Keep the existing `techno_*` localStorage keys unchanged to avoid clearing returning shoppers' carts and wishlist.
