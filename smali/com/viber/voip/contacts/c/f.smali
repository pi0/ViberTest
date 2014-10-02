.class final Lcom/viber/voip/contacts/c/f;
.super Lcom/viber/voip/contacts/c/r;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/c/r;-><init>(Lcom/viber/voip/contacts/c/b;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 278
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;)Lcom/viber/voip/util/b/w;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/util/b/w;->b(Landroid/net/Uri;)V

    .line 279
    return-void
.end method
