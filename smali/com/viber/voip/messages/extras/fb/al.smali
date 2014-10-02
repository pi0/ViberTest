.class public Lcom/viber/voip/messages/extras/fb/al;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/app/Activity;

.field private c:Lcom/viber/voip/messages/extras/fb/s;

.field private d:Lcom/viber/voip/messages/extras/fb/ae;

.field private e:Landroid/app/Dialog;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/extras/fb/s;Landroid/app/Activity;Lcom/viber/voip/messages/extras/fb/ae;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->a:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/viber/voip/messages/extras/fb/al;->b:Landroid/app/Activity;

    .line 126
    iput-object p1, p0, Lcom/viber/voip/messages/extras/fb/al;->c:Lcom/viber/voip/messages/extras/fb/s;

    .line 127
    iput-object p3, p0, Lcom/viber/voip/messages/extras/fb/al;->d:Lcom/viber/voip/messages/extras/fb/ae;

    .line 128
    sget-object v0, Lcom/viber/voip/dk;->a:Lcom/viber/voip/dk;

    invoke-static {v0}, Lcom/viber/voip/dc;->a(Lcom/viber/voip/dk;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->f:Landroid/os/Handler;

    .line 129
    return-void
.end method

.method private static a(Landroid/app/Activity;II)Landroid/app/Dialog;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/messages/extras/fb/al;->a(Landroid/app/Activity;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/app/Activity;ILjava/lang/String;)Landroid/app/Dialog;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 191
    new-instance v2, Landroid/app/Dialog;

    const v0, 0x7f0d00ee

    invoke-direct {v2, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 192
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 193
    const v0, 0x7f030099

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 194
    const v0, 0x7f070259

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 195
    const v1, 0x7f07025b

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const v1, 0x7f0202b5

    if-ne p1, v1, :cond_0

    .line 197
    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 198
    const v1, 0x7f07025a

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 199
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    :goto_0
    return-object v2

    .line 201
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private a(Landroid/app/Dialog;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 176
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->f:Landroid/os/Handler;

    new-instance v1, Lcom/viber/voip/messages/extras/fb/am;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/messages/extras/fb/am;-><init>(Lcom/viber/voip/messages/extras/fb/al;Landroid/app/Dialog;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 184
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter

    .prologue
    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->c:Lcom/viber/voip/messages/extras/fb/s;

    invoke-virtual {v0}, Lcom/viber/voip/messages/extras/fb/s;->e()V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_3

    .line 145
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->a:Ljava/lang/String;

    goto :goto_0

    .line 137
    :catch_1
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->a:Ljava/lang/String;

    goto :goto_0

    .line 139
    :catch_2
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->a:Ljava/lang/String;

    goto :goto_0

    .line 141
    :catch_3
    move-exception v0

    .line 142
    invoke-virtual {v0}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->a:Ljava/lang/String;

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->e:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ViberApplication;

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->isOnForeground()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->a:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 154
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->b:Landroid/app/Activity;

    const v1, 0x7f0202b6

    const v2, 0x7f0c0447

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/extras/fb/al;->a(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->e:Landroid/app/Dialog;

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 165
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->e:Landroid/app/Dialog;

    const/16 v1, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/viber/voip/messages/extras/fb/al;->a(Landroid/app/Dialog;I)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->a:Ljava/lang/String;

    const-string/jumbo v1, "Error validating access token"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->d:Lcom/viber/voip/messages/extras/fb/ae;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->d:Lcom/viber/voip/messages/extras/fb/ae;

    invoke-interface {v0}, Lcom/viber/voip/messages/extras/fb/ae;->onFacebookValidationError()V

    goto :goto_0

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->b:Landroid/app/Activity;

    const v1, 0x7f0202b7

    iget-object v2, p0, Lcom/viber/voip/messages/extras/fb/al;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/extras/fb/al;->a(Landroid/app/Activity;ILjava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->e:Landroid/app/Dialog;

    goto :goto_1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 112
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/fb/al;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/viber/voip/messages/extras/fb/al;->a(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->b:Landroid/app/Activity;

    const v1, 0x7f0202b5

    const v2, 0x7f0c044b

    invoke-static {v0, v1, v2}, Lcom/viber/voip/messages/extras/fb/al;->a(Landroid/app/Activity;II)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->e:Landroid/app/Dialog;

    .line 171
    iget-object v0, p0, Lcom/viber/voip/messages/extras/fb/al;->e:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 172
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 173
    return-void
.end method
