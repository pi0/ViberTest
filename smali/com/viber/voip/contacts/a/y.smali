.class final Lcom/viber/voip/contacts/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/a;


# instance fields
.field private final a:Lcom/viber/voip/contacts/b/b/e;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Lcom/viber/voip/contacts/a/z;

    invoke-direct {v0, p0}, Lcom/viber/voip/contacts/a/z;-><init>(Lcom/viber/voip/contacts/a/y;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/a/y;->a:Lcom/viber/voip/contacts/b/b/e;

    return-void
.end method


# virtual methods
.method public synthetic a(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/viber/voip/contacts/a/y;->b(I)Lcom/viber/voip/contacts/b/e;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/viber/voip/contacts/b/e;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/viber/voip/contacts/a/y;->a:Lcom/viber/voip/contacts/b/b/e;

    return-object v0
.end method

.method public c_()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x1

    return v0
.end method
