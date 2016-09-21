Rails.application.config.middleware.use OmniAuth::Builder do
     provider :twitter, 'VV5M7WM5tuVFVQWVNYcZCRdtx','UMq5wOGRgCMltPaZiRGbliUJiteZA2E1r531WLcKgxW4AIFMJg'
     provider :github, '8f1f1701d963bf1db1af','2c4926e055d6ba3dd420d42c79bcf4111c34f198'
     provider :facebook, '1413436828955935','86b85f0883c10d31834255b4835b18ce'
end