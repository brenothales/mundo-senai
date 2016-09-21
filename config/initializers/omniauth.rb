Rails.application.config.middleware.use OmniAuth::Builder do
     provider :twitter, 'VV5M7WM5tuVFVQWVNYcZCRdtx','UMq5wOGRgCMltPaZiRGbliUJiteZA2E1r531WLcKgxW4AIFMJg'
     provider :github, '307ad7c0bfbbc23dd1c8','53270bd705c73188948c0d9fb0c1075a333c2475'
     provider :facebook, '1850938058460015','5d74a26d17e25054d8fa1812dd2079ce'
end
#