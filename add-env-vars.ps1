# Add all environment variables to Vercel production

$envVars = @{
    "JWT_SECRET" = "H9VdyLAmasLPrFKI6Ozp/FKaNkbm7zbS2bw5Th1xR/w="
    "NEXTAUTH_SECRET" = "GgyEsV5aQ7C9fUUai88dixuUb9NafO/AD4mTaJWzEes="
    "NEXTAUTH_URL" = "https://researchosfinaltry01.vercel.app"
    "BLOB_READ_WRITE_TOKEN" = "vercel_blob_rw_z5Pqwh55j92Yfljg_gSaywHbLjmcW0F1fG8qY1p4Y0YaGxK"
    "GROQ_API_KEY" = "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"
    "GMAIL_USER" = "researchosteamindia@gmail.com"
    "GMAIL_APP_PASSWORD" = "pvwpqbcqrenvsint"
    "RESEND_API_KEY" = "re_2yqQQnb3_6SqBQw6nb48ECMjj4vkdKH4W"
    "EMAIL_FROM" = "ResearchOS <onboarding@resend.dev>"
    "NEXT_PUBLIC_APP_URL" = "https://researchosfinaltry01.vercel.app"
    "NODE_ENV" = "production"
}

foreach ($key in $envVars.Keys) {
    Write-Host "Adding $key..." -ForegroundColor Cyan
    $value = $envVars[$key]
    echo "no`n$value" | vercel env add $key production
    Start-Sleep -Seconds 2
}

Write-Host "`nAll environment variables added successfully!" -ForegroundColor Green
