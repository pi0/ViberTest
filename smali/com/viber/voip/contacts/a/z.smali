.class Lcom/viber/voip/contacts/a/z;
.super Lcom/viber/voip/contacts/b/b/e;
.source "SourceFile"


# instance fields
.field private E:Ljava/lang/String;

.field private F:Landroid/net/Uri;

.field final synthetic a:Lcom/viber/voip/contacts/a/y;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/a/y;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/viber/voip/contacts/a/z;->a:Lcom/viber/voip/contacts/a/y;

    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/viber/voip/contacts/a/z;->E:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getRegistrationValues()Lcom/viber/voip/registration/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/registration/cp;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/a/z;->a(Ljava/lang/String;)V

    .line 128
    :cond_0
    invoke-super {p0}, Lcom/viber/voip/contacts/b/b/e;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/contacts/a/z;->E:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/viber/voip/contacts/b/b/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    iput-object p1, p0, Lcom/viber/voip/contacts/a/z;->F:Landroid/net/Uri;

    .line 133
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/viber/voip/contacts/a/z;->E:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/viber/voip/contacts/a/z;->F:Landroid/net/Uri;

    return-object v0
.end method
