-- Kør dette én gang i Supabase > SQL Editor
create table if not exists public.shifts (
  id text primary key,
  date date not null,
  start_time time not null,
  end_time time not null,
  break_minutes integer not null default 0,
  updated_at timestamptz not null default now()
);

alter table public.shifts enable row level security;

-- Simpel familie-app: den offentlige anon/publishable key må læse/skrive denne ene tabel.
-- Brug kun dette til ikke-følsomme vagtdata. Del ALDRIG service_role/secret key.
create policy "family read shifts" on public.shifts for select to anon using (true);
create policy "family insert shifts" on public.shifts for insert to anon with check (true);
create policy "family update shifts" on public.shifts for update to anon using (true) with check (true);
create policy "family delete shifts" on public.shifts for delete to anon using (true);
