.class public Lcom/viber/voip/block/o;
.super Lcom/viber/provider/b;
.source "SourceFile"


# instance fields
.field private h:Lcom/viber/voip/contacts/c/c/c;

.field private i:Lcom/viber/voip/contacts/c/c/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v1, 0x5

    sget-object v2, Lcom/viber/provider/contacts/b;->b:Landroid/net/Uri;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/viber/provider/b;-><init>(ILandroid/net/Uri;Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/provider/e;I)V

    .line 21
    new-instance v0, Lcom/viber/voip/block/p;

    invoke-direct {v0, p0}, Lcom/viber/voip/block/p;-><init>(Lcom/viber/voip/block/o;)V

    iput-object v0, p0, Lcom/viber/voip/block/o;->i:Lcom/viber/voip/contacts/c/c/d;

    .line 35
    sget-object v0, Lcom/viber/voip/block/q;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/viber/voip/block/o;->a([Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "blockednumbers.blocked_date DESC"

    invoke-virtual {p0, v0}, Lcom/viber/voip/block/o;->b(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/viber/voip/contacts/c/c/a/g;

    invoke-direct {v0}, Lcom/viber/voip/contacts/c/c/a/g;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/block/o;->h:Lcom/viber/voip/contacts/c/c/c;

    .line 39
    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/viber/voip/block/o;->e(I)Lcom/viber/voip/block/q;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lcom/viber/voip/block/q;
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/viber/voip/block/o;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    new-instance v0, Lcom/viber/voip/block/q;

    iget-object v1, p0, Lcom/viber/voip/block/o;->e:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/viber/voip/block/q;-><init>(Landroid/database/Cursor;)V

    .line 46
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/viber/voip/block/o;->h:Lcom/viber/voip/contacts/c/c/c;

    iget-object v1, p0, Lcom/viber/voip/block/o;->i:Lcom/viber/voip/contacts/c/c/d;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/c/c;->b(Lcom/viber/voip/contacts/c/c/d;)V

    .line 51
    return-void
.end method

.method public n()V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/viber/voip/block/o;->h:Lcom/viber/voip/contacts/c/c/c;

    iget-object v1, p0, Lcom/viber/voip/block/o;->i:Lcom/viber/voip/contacts/c/c/d;

    invoke-interface {v0, v1}, Lcom/viber/voip/contacts/c/c/c;->a(Lcom/viber/voip/contacts/c/c/d;)V

    .line 55
    return-void
.end method
