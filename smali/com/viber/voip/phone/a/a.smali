.class public Lcom/viber/voip/phone/a/a;
.super Lcom/viber/voip/phone/ab;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/ui/call/sgs3/c;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;

.field private h:Lcom/viber/voip/phone/a/b;

.field private i:Z

.field private j:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/phone/ab;-><init>(Landroid/view/View;Lcom/viber/voip/phone/PhoneActivity;)V

    .line 36
    const-string/jumbo v0, "IncomingStateWrapper"

    iput-object v0, p0, Lcom/viber/voip/phone/a/a;->c:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/a/a;->i:Z

    .line 58
    const v0, 0x7f070130

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/a/a;->d:Landroid/widget/TextView;

    .line 59
    const v0, 0x7f070131

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/viber/voip/phone/a/a;->e:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f070112

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/viber/voip/phone/a/a;->f:Landroid/widget/ImageView;

    .line 61
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 62
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 63
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/viber/voip/phone/a/a;->j:Landroid/graphics/drawable/AnimationDrawable;

    .line 66
    :cond_0
    const v0, 0x7f070089

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;

    iput-object v0, p0, Lcom/viber/voip/phone/a/a;->g:Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;

    .line 67
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->g:Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->g:Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;

    invoke-virtual {v0, p0}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->setTargetListener(Lcom/viber/voip/ui/call/sgs3/c;)V

    .line 71
    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 115
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->e()V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->f()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/viber/jni/PhoneControllerWrapper;)V
    .locals 2
    .parameter

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/phone/a/a;->i:Z

    .line 76
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->g:Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getSoundService()Lcom/viber/voip/sound/ISoundService;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/sound/ISoundService;->stream_Ring()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/phone/PhoneActivity;->setVolumeControlStream(I)V

    .line 79
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 82
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/phone/call/k;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 119
    if-eqz p1, :cond_3

    .line 121
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    if-nez v0, :cond_1

    .line 122
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/contacts/b/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 126
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->b:Lcom/viber/voip/phone/PhoneActivity;

    invoke-virtual {v0}, Lcom/viber/voip/phone/PhoneActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    const-string/jumbo v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 129
    const-string/jumbo v3, "photo_uri"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 130
    new-instance v4, Lcom/viber/voip/phone/a/b;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p0, v1, v5, v0}, Lcom/viber/voip/phone/a/b;-><init>(Lcom/viber/voip/phone/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    if-nez v0, :cond_1

    .line 135
    new-instance v0, Lcom/viber/voip/phone/a/b;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v2, v1, v2}, Lcom/viber/voip/phone/a/b;-><init>(Lcom/viber/voip/phone/a/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    invoke-static {v0}, Lcom/viber/voip/phone/a/b;->a(Lcom/viber/voip/phone/a/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    invoke-static {v1}, Lcom/viber/voip/phone/a/b;->a(Lcom/viber/voip/phone/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->e:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    invoke-static {v1}, Lcom/viber/voip/phone/a/b;->b(Lcom/viber/voip/phone/a/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_0
    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/phone/call/CallerInfo;->c()Lcom/viber/voip/contacts/b/b;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    invoke-static {v0}, Lcom/viber/voip/phone/a/b;->c(Lcom/viber/voip/phone/a/b;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->h:Lcom/viber/voip/phone/a/b;

    invoke-static {v0}, Lcom/viber/voip/phone/a/b;->c(Lcom/viber/voip/phone/a/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/viber/voip/phone/a/a;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    .line 152
    iget-object v1, p0, Lcom/viber/voip/phone/a/a;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 153
    iput-object v2, p0, Lcom/viber/voip/phone/a/a;->j:Landroid/graphics/drawable/AnimationDrawable;

    .line 158
    :cond_2
    iget-object v1, p0, Lcom/viber/voip/phone/a/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v6, v6, v6, v6}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 159
    iget-object v1, p0, Lcom/viber/voip/phone/a/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 160
    iget-object v1, p0, Lcom/viber/voip/phone/a/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 161
    iget-object v1, p0, Lcom/viber/voip/phone/a/a;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 165
    :cond_3
    return-void

    .line 144
    :cond_4
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/viber/voip/phone/call/k;->c()Lcom/viber/voip/phone/call/CallerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/phone/call/CallerInfo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 86
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/viber/voip/phone/a/a;->i:Z

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/phone/a/a;->i:Z

    .line 95
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->j:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->j:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/phone/a/a;->g:Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/viber/voip/ui/call/sgs3/SGSIncomingView;->setVisibility(I)V

    .line 99
    return-void
.end method
