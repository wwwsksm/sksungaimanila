# Website SK Sungai Manila — Versi Vercel

Pakej ini mengandungi website sekolah, Panel Admin, kemas kini kandungan, muat naik galeri mengikut kategori dan visitor counter.

## A. Sediakan Supabase

1. Daftar di https://supabase.com dan cipta projek baharu.
2. Buka **SQL Editor**.
3. Salin semua kandungan fail `supabase-setup.sql` dan tekan **Run**.
4. Buka **Project Settings → API**. Salin Project URL dan service_role key.

## B. Upload kod ke GitHub

1. Ekstrak fail ZIP ini.
2. Cipta repository GitHub baharu.
3. Upload semua kandungan folder projek ke repository tersebut.

## C. Deploy di Vercel

1. Log masuk di https://vercel.com.
2. Pilih **Add New → Project**, kemudian import repository GitHub.
3. Framework: **Next.js**.
4. Tambah Environment Variables berikut:

| Nama | Nilai |
|---|---|
| `SUPABASE_URL` | Project URL Supabase |
| `SUPABASE_SERVICE_ROLE_KEY` | service_role key Supabase |
| `ADMIN_EMAIL` | sekolah-6841-cm1@moe-dl.edu.my |
| `ADMIN_PASSWORD` | Kata laluan Admin pilihan anda |
| `ADMIN_SESSION_SECRET` | Teks rawak panjang, minimum 32 aksara |

5. Tekan **Deploy**.

Panel Admin boleh dibuka melalui `https://alamat-website.vercel.app/admin`.

## Penting

Jangan muat naik fail `.env`, service_role key atau kata laluan ke GitHub. Masukkan semua maklumat sulit hanya melalui Environment Variables di Vercel.
