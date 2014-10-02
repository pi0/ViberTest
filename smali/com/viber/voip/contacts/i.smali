.class public Lcom/viber/voip/contacts/i;
.super Lcom/viber/voip/contacts/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 12
    const/16 v1, 0x8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/viber/voip/contacts/g;-><init>(ILandroid/content/Context;Landroid/support/v4/app/LoaderManager;Lcom/viber/voip/contacts/c/d/b;Lcom/viber/provider/e;I)V

    .line 13
    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-super {p0, p1, p2}, Lcom/viber/voip/contacts/g;->a(IZ)V

    .line 28
    return-void
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/g;->e(I)V

    .line 23
    return-void
.end method

.method public f(I)V
    .locals 0
    .parameter

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/viber/voip/contacts/g;->f(I)V

    .line 18
    return-void
.end method
