# Dhaka Gadget Grove — Project Roadmap

## Storefront
- [x] Bangla-first responsive storefront and product catalog
- [x] Product detail, cart, checkout, order confirmation
- [x] Supabase email/password authentication
- [x] Google OAuth through Supabase (requires provider configuration)
- [ ] Owner business details and merchant payment numbers

## Admin application
- [x] Separate Vite application under `/admin`
- [x] Supabase email/password login and database-backed admin role check
- [x] Dashboard metrics, product management, order status management
- [ ] Apply admin RLS migration and assign the owner admin role
- [ ] Deploy as a second Vercel project on `admin.dhakagadgetgrove.com`

## Production checks
- [ ] Confirm Supabase Auth redirect URLs for both domains
- [ ] Verify RLS policies in the live Supabase project
- [ ] Test order creation, stock decrement, admin product updates, and order updates
- [ ] Add real support contact details and payment instructions
