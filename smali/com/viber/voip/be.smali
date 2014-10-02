.class Lcom/viber/voip/be;
.super Lcom/viber/voip/bd;
.source "SourceFile"


# instance fields
.field final synthetic ae:Lcom/viber/voip/bc;


# direct methods
.method public constructor <init>(Lcom/viber/voip/bc;)V
    .locals 3
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/viber/voip/be;->ae:Lcom/viber/voip/bc;

    invoke-direct {p0, p1}, Lcom/viber/voip/bd;-><init>(Lcom/viber/voip/bc;)V

    .line 234
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=ActivateUser"

    iput-object v0, p0, Lcom/viber/voip/be;->a:Ljava/lang/String;

    .line 235
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=RegisterUser"

    iput-object v0, p0, Lcom/viber/voip/be;->b:Ljava/lang/String;

    .line 236
    const-string/jumbo v0, "http://secure.viber.com/viber/viber.php?function=GetDefaultCountry"

    iput-object v0, p0, Lcom/viber/voip/be;->c:Ljava/lang/String;

    .line 237
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=DeActivate"

    iput-object v0, p0, Lcom/viber/voip/be;->d:Ljava/lang/String;

    .line 238
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=GenerateDeviceKey"

    iput-object v0, p0, Lcom/viber/voip/be;->k:Ljava/lang/String;

    .line 239
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=GenerateDeviceKeyDone"

    iput-object v0, p0, Lcom/viber/voip/be;->l:Ljava/lang/String;

    .line 240
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=UpdatePhone"

    iput-object v0, p0, Lcom/viber/voip/be;->m:Ljava/lang/String;

    .line 241
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=ResendActivationCode"

    iput-object v0, p0, Lcom/viber/voip/be;->n:Ljava/lang/String;

    .line 243
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=GetRID"

    iput-object v0, p0, Lcom/viber/voip/be;->e:Ljava/lang/String;

    .line 244
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=SetRToken"

    iput-object v0, p0, Lcom/viber/voip/be;->f:Ljava/lang/String;

    .line 245
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=SetRReferral"

    iput-object v0, p0, Lcom/viber/voip/be;->g:Ljava/lang/String;

    .line 246
    const-string/jumbo v0, "https://viber.co.jp/webview/account"

    iput-object v0, p0, Lcom/viber/voip/be;->h:Ljava/lang/String;

    .line 247
    const-string/jumbo v0, "https://viber.co.jp/app/linkage"

    iput-object v0, p0, Lcom/viber/voip/be;->i:Ljava/lang/String;

    .line 249
    const-string/jumbo v0, "http://www.viber.com/howto/public_chats"

    iput-object v0, p0, Lcom/viber/voip/be;->R:Ljava/lang/String;

    .line 250
    const-string/jumbo v0, "http:/www.viber.com/promotion/desktop"

    iput-object v0, p0, Lcom/viber/voip/be;->S:Ljava/lang/String;

    .line 251
    const-string/jumbo v0, "http://instagram.com/viber"

    iput-object v0, p0, Lcom/viber/voip/be;->T:Ljava/lang/String;

    .line 252
    const-string/jumbo v0, "https://vibes.viber.com"

    iput-object v0, p0, Lcom/viber/voip/be;->ac:Ljava/lang/String;

    .line 253
    const-string/jumbo v0, "http://support.viber.com/customer/portal/emails/new?publicchatid=%s"

    iput-object v0, p0, Lcom/viber/voip/be;->Q:Ljava/lang/String;

    .line 255
    const-string/jumbo v0, "https://share.viber.com/"

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/upload.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/be;->o:Ljava/lang/String;

    .line 258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/upload_photo.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/be;->p:Ljava/lang/String;

    .line 259
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/download_photo.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/be;->u:Ljava/lang/String;

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/isok.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/be;->s:Ljava/lang/String;

    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/download.php"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/be;->t:Ljava/lang/String;

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/animated_message/download?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/viber/voip/be;->Z:Ljava/lang/String;

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "pg_upload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->q:Ljava/lang/String;

    .line 265
    const-string/jumbo v0, "https://share.cdn.viber.com/pg_download"

    iput-object v0, p0, Lcom/viber/voip/be;->r:Ljava/lang/String;

    .line 267
    const-string/jumbo v0, "https://secure.viber.com/viber/viber.php?function=DeviceFlags"

    iput-object v0, p0, Lcom/viber/voip/be;->v:Ljava/lang/String;

    .line 268
    const-string/jumbo v0, "http://activate.viber.com/viber/activate.php?phn=%s&udid=%s"

    iput-object v0, p0, Lcom/viber/voip/be;->w:Ljava/lang/String;

    .line 270
    const-string/jumbo v0, "http://config.viber.com/config/android/config.2.2.xml"

    iput-object v0, p0, Lcom/viber/voip/be;->x:Ljava/lang/String;

    .line 272
    const-string/jumbo v0, "http://content.cdn.viber.com/stickers/%RES%/%PKG%.zip"

    iput-object v0, p0, Lcom/viber/voip/be;->y:Ljava/lang/String;

    .line 273
    const-string/jumbo v0, "http://content.cdn.viber.com/stickers/icons/%RES%_white/Icon_%PKG%.png"

    iput-object v0, p0, Lcom/viber/voip/be;->z:Ljava/lang/String;

    .line 274
    const-string/jumbo v0, "http://content.cdn.viber.com/stickers/icons/%RES%_colored/Icon_%PKG%.png"

    iput-object v0, p0, Lcom/viber/voip/be;->A:Ljava/lang/String;

    .line 275
    const-string/jumbo v0, "http://content.cdn.viber.com/stickers/%RES%/%PKG%/%ID%.png"

    iput-object v0, p0, Lcom/viber/voip/be;->C:Ljava/lang/String;

    .line 277
    const-string/jumbo v0, "https://account.viber.com"

    iput-object v0, p0, Lcom/viber/voip/be;->O:Ljava/lang/String;

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/be;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->G:Ljava/lang/String;

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/be;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mobile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->H:Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/be;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/what-is-viber-out/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->L:Ljava/lang/String;

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/be;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/1/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->I:Ljava/lang/String;

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/be;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/?module=android&controller=express&action=ratespage&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->K:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/be;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/mobile/isbillingavailable/phone/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->M:Ljava/lang/String;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/be;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/1/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->N:Ljava/lang/String;

    .line 285
    const-string/jumbo v0, "http://rates.viber.com/get-rates-by-dest?"

    iput-object v0, p0, Lcom/viber/voip/be;->J:Ljava/lang/String;

    .line 287
    const-string/jumbo v0, "http://content.cdn.viber.com/backgrounds/%RES%/%PKG%.zip"

    iput-object v0, p0, Lcom/viber/voip/be;->D:Ljava/lang/String;

    .line 288
    const-string/jumbo v0, "http://content.cdn.viber.com/backgrounds/%RES%/%PKG%/%ID%.jpg"

    iput-object v0, p0, Lcom/viber/voip/be;->E:Ljava/lang/String;

    .line 290
    const v0, 0x7f060017

    iput v0, p0, Lcom/viber/voip/be;->F:I

    .line 292
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/viber/voip/be;->aa:Ljava/lang/String;

    .line 295
    const-string/jumbo v0, "http://market.viber.com/stickers/"

    iput-object v0, p0, Lcom/viber/voip/be;->U:Ljava/lang/String;

    .line 296
    const-string/jumbo v0, "https://market.api.viber.com/1/users/"

    iput-object v0, p0, Lcom/viber/voip/be;->V:Ljava/lang/String;

    .line 297
    const-string/jumbo v0, "http://support.viber.com/customer/portal/articles/1362371"

    iput-object v0, p0, Lcom/viber/voip/be;->W:Ljava/lang/String;

    .line 298
    const-string/jumbo v0, "http://content.cdn.viber.com/stickers/notifications.json"

    iput-object v0, p0, Lcom/viber/voip/be;->X:Ljava/lang/String;

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/viber/voip/be;->U:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "static/data/product/stickers.%PKG%.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/be;->B:Ljava/lang/String;

    .line 301
    const/4 v0, 0x0

    iput v0, p0, Lcom/viber/voip/be;->ab:I

    .line 302
    return-void
.end method
