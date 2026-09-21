create table if not exists public.site_content (key text primary key,value text not null,updated_at timestamptz not null default now());
create table if not exists public.media (id uuid primary key,object_key text unique not null,filename text not null,content_type text not null,alt text not null default '',category text not null default 'Program Sekolah',created_at timestamptz not null default now());
insert into storage.buckets (id,name,public) values ('gallery','gallery',true) on conflict (id) do update set public=true;
create or replace function public.increment_visitor() returns bigint language plpgsql security definer as $$ declare total bigint; begin insert into public.site_content(key,value,updated_at) values ('visitorCount','1',now()) on conflict(key) do update set value=(public.site_content.value::bigint + 1)::text,updated_at=now() returning value::bigint into total;return total;end;$$;
alter table public.site_content enable row level security;
alter table public.media enable row level security;
