.class public Lcom/viber/voip/messages/ui/media/SendMediaActivity;
.super Lcom/viber/voip/app/ViberActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/ImageButton;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Landroid/net/Uri;

.field private f:Lcom/actionbarsherlock/app/ActionBar;

.field private g:I

.field private h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

.field private i:Lcom/viber/voip/a/am;

.field private j:Z

.field private k:Landroid/text/TextWatcher;

.field private l:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/voip/app/ViberActivity;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->g:I

    .line 70
    new-instance v0, Lcom/viber/voip/a/am;

    invoke-direct {v0}, Lcom/viber/voip/a/am;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->i:Lcom/viber/voip/a/am;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->j:Z

    .line 108
    new-instance v0, Lcom/viber/voip/messages/ui/media/ae;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/ae;-><init>(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->k:Landroid/text/TextWatcher;

    .line 143
    new-instance v0, Lcom/viber/voip/messages/ui/media/af;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/media/af;-><init>(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->l:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 125
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->b:Landroid/widget/ImageButton;

    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 126
    return-void

    .line 125
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 213
    const-string/jumbo v0, "media_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string/jumbo v0, "media_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 215
    const-string/jumbo v0, "media_uri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->e:Landroid/net/Uri;

    .line 217
    const-string/jumbo v0, "camera_image"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleIntent.originalFileUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mimeType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Ljava/lang/String;)V

    .line 221
    if-nez v4, :cond_0

    .line 222
    const-string/jumbo v0, "handleIntent.mimeType can\'t be null"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 223
    const-string/jumbo v0, "handleIntent.mimeType can\'t be null"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->finish()V

    .line 253
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    long-to-int v1, v0

    .line 255
    new-instance v0, Lcom/viber/voip/messages/ui/media/ag;

    invoke-direct {v0, p0, v1, p1, v4}, Lcom/viber/voip/messages/ui/media/ag;-><init>(Lcom/viber/voip/messages/ui/media/SendMediaActivity;ILandroid/content/Intent;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/viber/voip/messages/extras/image/b;->a(Lcom/viber/voip/messages/extras/image/e;)V

    .line 296
    invoke-static {}, Lcom/viber/voip/messages/extras/image/b;->a()Lcom/viber/voip/messages/extras/image/b;

    move-result-object v0

    new-array v3, v2, [Landroid/net/Uri;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->e:Landroid/net/Uri;

    aput-object v2, v3, v5

    sget-object v5, Lcom/viber/voip/messages/extras/image/l;->d:Lcom/viber/voip/messages/extras/image/l;

    const v6, 0x3e800

    move-object v2, p0

    invoke-virtual/range {v0 .. v6}, Lcom/viber/voip/messages/extras/image/b;->a(ILandroid/content/Context;[Landroid/net/Uri;Ljava/lang/String;Lcom/viber/voip/messages/extras/image/l;I)V

    .line 301
    :goto_1
    return-void

    .line 225
    :cond_0
    const-string/jumbo v0, "image"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 227
    sget-object v0, Lcom/viber/voip/w;->C:Landroid/content/UriMatcher;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->e:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v0, v2

    .line 229
    :goto_2
    if-eqz v0, :cond_2

    const/4 v0, 0x2

    :goto_3
    iput v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->g:I

    .line 231
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->m:Lcom/viber/voip/a/am;

    iget-object v1, v1, Lcom/viber/voip/a/am;->a:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->f:Lcom/actionbarsherlock/app/ActionBar;

    const v1, 0x7f0c0422

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 234
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a:Landroid/widget/EditText;

    const v1, 0x7f0c0548

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto :goto_0

    :cond_1
    move v0, v5

    .line 227
    goto :goto_2

    :cond_2
    move v0, v2

    .line 229
    goto :goto_3

    .line 236
    :cond_3
    const-string/jumbo v0, "video"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    const/4 v0, 0x3

    iput v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->g:I

    .line 240
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v1, Lcom/viber/voip/a/a;->m:Lcom/viber/voip/a/am;

    iget-object v1, v1, Lcom/viber/voip/a/am;->b:Lcom/viber/voip/a/c;

    invoke-virtual {v1}, Lcom/viber/voip/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->f:Lcom/actionbarsherlock/app/ActionBar;

    const v1, 0x7f0c0424

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setTitle(I)V

    .line 243
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a:Landroid/widget/EditText;

    const v1, 0x7f0c0549

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    goto/16 :goto_0

    .line 246
    :cond_4
    const-string/jumbo v0, "not supported format!!!"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 298
    :cond_5
    const-string/jumbo v0, "intent without thread id or media uri! finish activity!"

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->finish()V

    goto :goto_1
.end method

.method private a(Landroid/net/Uri;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 304
    if-nez p1, :cond_1

    .line 305
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->c:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const v0, 0x7f0202f2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    :goto_1
    return-void

    .line 305
    :cond_0
    const v0, 0x7f0202f1

    goto :goto_0

    .line 308
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->c:Landroid/widget/ImageView;

    const/16 v1, 0x500

    const/16 v2, 0x500

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lcom/viber/voip/messages/extras/image/h;->a(Landroid/content/Context;Landroid/net/Uri;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 309
    :catch_0
    move-exception v0

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set image to preview:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Landroid/net/Uri;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 343
    const/4 v0, 0x3

    const-string/jumbo v1, "SendMediaActivity"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->c()V

    return-void
.end method

.method private b()Z
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d()V

    .line 158
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->j:Z

    goto :goto_0
.end method

.method static synthetic c(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a()V

    return-void
.end method

.method static synthetic d(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->d:Ljava/lang/String;

    const-string/jumbo v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 185
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 186
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->i:Lcom/viber/voip/a/am;

    invoke-virtual {v1}, Lcom/viber/voip/a/am;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 200
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_1

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 205
    :cond_1
    const/4 v0, 0x3

    const-string/jumbo v1, "sendMediaMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setResultIntentAndFinishActivity send mediaDataContainer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    const-string/jumbo v1, "data_container"

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 208
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->setResult(ILandroid/content/Intent;)V

    .line 209
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->finish()V

    .line 210
    return-void

    .line 188
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->i:Lcom/viber/voip/a/am;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/am;->a(J)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 191
    :cond_3
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->d:Ljava/lang/String;

    const-string/jumbo v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v1, v1, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->i:Lcom/viber/voip/a/am;

    invoke-virtual {v1}, Lcom/viber/voip/a/am;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto :goto_0

    .line 196
    :cond_4
    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->i:Lcom/viber/voip/a/am;

    iget-object v2, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v2, v2, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/viber/voip/a/am;->b(J)Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 46
    iget v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->g:I

    return v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 323
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 324
    const-string/jumbo v1, "media_source"

    iget v2, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 325
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->setResult(ILandroid/content/Intent;)V

    .line 327
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    invoke-static {v0}, Lcom/viber/voip/util/upload/ac;->a(Landroid/net/Uri;)Z

    .line 330
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->c:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 332
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->d:Ljava/lang/String;

    const-string/jumbo v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->h:Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;

    iget-object v0, v0, Lcom/viber/voip/messages/ui/media/SendMediaDataContainer;->b:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/viber/voip/messages/extras/image/h;->c(Landroid/content/Context;Landroid/net/Uri;)Z

    .line 336
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private f()V
    .locals 3

    .prologue
    .line 339
    const-string/jumbo v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 340
    return-void
.end method

.method static synthetic g(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->f()V

    .line 175
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->finish()V

    .line 176
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->e()V

    .line 319
    invoke-super {p0}, Lcom/viber/voip/app/ViberActivity;->onBackPressed()V

    .line 320
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/viber/voip/app/ViberActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const v0, 0x7f03011f

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->setContentView(I)V

    .line 78
    const v0, 0x7f0703aa

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a:Landroid/widget/EditText;

    .line 79
    const v0, 0x7f0702dd

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->b:Landroid/widget/ImageButton;

    .line 80
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->b:Landroid/widget/ImageButton;

    const v1, 0x7f02021f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 81
    const v0, 0x7f070070

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->c:Landroid/widget/ImageView;

    .line 82
    const v0, 0x7f0701a1

    invoke-virtual {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->d:Landroid/widget/ProgressBar;

    .line 83
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->getSupportActionBar()Lcom/actionbarsherlock/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->f:Lcom/actionbarsherlock/app/ActionBar;

    .line 84
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->f:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 85
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->f:Lcom/actionbarsherlock/app/ActionBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 86
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->f:Lcom/actionbarsherlock/app/ActionBar;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/actionbarsherlock/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a(Landroid/content/Intent;)V

    .line 89
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->b:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a()V

    .line 92
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->k:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 93
    iget-object v0, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/viber/voip/messages/ui/media/ad;

    invoke-direct {v1, p0}, Lcom/viber/voip/messages/ui/media/ad;-><init>(Lcom/viber/voip/messages/ui/media/SendMediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 106
    return-void
.end method

.method public onCreateOptionsMenu(Lcom/actionbarsherlock/view/Menu;)Z
    .locals 4
    .parameter

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->getSupportMenuInflater()Lcom/actionbarsherlock/view/MenuInflater;

    move-result-object v0

    .line 135
    const v1, 0x7f100015

    invoke-virtual {v0, v1, p1}, Lcom/actionbarsherlock/view/MenuInflater;->inflate(ILcom/actionbarsherlock/view/Menu;)V

    .line 138
    const v0, 0x7f070476

    invoke-interface {p1, v0}, Lcom/actionbarsherlock/view/Menu;->findItem(I)Lcom/actionbarsherlock/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02006c

    const v2, 0x7f0c034b

    iget-object v3, p0, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->l:Landroid/view/View$OnClickListener;

    invoke-static {v0, v1, v2, v3}, Lcom/viber/voip/util/gl;->a(Lcom/actionbarsherlock/view/MenuItem;IILandroid/view/View$OnClickListener;)Lcom/actionbarsherlock/internal/view/menu/ActionMenuItemView;

    .line 140
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Lcom/actionbarsherlock/view/MenuItem;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 163
    invoke-interface {p1}, Lcom/actionbarsherlock/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return v1

    .line 165
    :pswitch_0
    invoke-direct {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->e()V

    .line 166
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/media/SendMediaActivity;->finish()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
