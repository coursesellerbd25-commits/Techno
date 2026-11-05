-- Additional privileges required by the separately deployed admin SPA.
-- Safe to run after the base commerce schema has been created.

-- Admins can view customer profiles; customers retain access to their own profile.
GRANT SELECT ON public.profiles TO authenticated;
DROP POLICY IF EXISTS "admin reads profiles" ON public.profiles;
CREATE POLICY "admin reads profiles" ON public.profiles
  FOR SELECT TO authenticated USING (public.has_role(auth.uid(), 'admin'));

GRANT INSERT, UPDATE, DELETE ON public.products TO authenticated;

-- Admins can update order fulfillment and payment status.
GRANT UPDATE ON public.orders TO authenticated;
DROP POLICY IF EXISTS "admin updates orders" ON public.orders;
CREATE POLICY "admin updates orders" ON public.orders
  FOR UPDATE TO authenticated
  USING (public.has_role(auth.uid(), 'admin'))
  WITH CHECK (public.has_role(auth.uid(), 'admin'));

-- Admin-only coupon management.
GRANT SELECT, INSERT, UPDATE, DELETE ON public.coupons TO authenticated;
DROP POLICY IF EXISTS "admin manages coupons" ON public.coupons;
CREATE POLICY "admin manages coupons" ON public.coupons
  FOR ALL TO authenticated
  USING (public.has_role(auth.uid(), 'admin'))
  WITH CHECK (public.has_role(auth.uid(), 'admin'));
