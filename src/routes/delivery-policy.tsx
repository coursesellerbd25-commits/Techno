import { createFileRoute } from "@tanstack/react-router";
import { PolicyPage } from "@/components/store/PolicyPage";
import { DELIVERY_POLICY } from "@/lib/policies";

export const Route = createFileRoute("/delivery-policy")({
  head: () => ({
    meta: [
      { title: "ডেলিভারি তথ্য — Dhaka Gadget Grove" },
      { name: "description", content: "Dhaka Gadget Grove-এর ডেলিভারি চার্জ, সময়সীমা ও অর্ডার যাচাই প্রক্রিয়া।" },
      { property: "og:title", content: "ডেলিভারি তথ্য — Dhaka Gadget Grove" },
      { property: "og:type", content: "website" },
      { name: "twitter:card", content: "summary_large_image" },
    ],
  }),
  component: () => <PolicyPage content={DELIVERY_POLICY} />,
});
