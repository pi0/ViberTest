.class public Lcom/viber/voip/contacts/b/b/j;
.super Lcom/viber/voip/contacts/b/b/a/l;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/viber/voip/contacts/b/b/a/l;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/viber/voip/contacts/b/b/a/e;)V
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/viber/voip/contacts/b/b/a/l;-><init>(Lcom/viber/voip/contacts/b/b/a/e;)V

    .line 11
    invoke-virtual {p1}, Lcom/viber/voip/contacts/b/b/a/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/b/b/j;->b:Ljava/lang/String;

    .line 12
    const/4 v0, 0x1

    iput v0, p0, Lcom/viber/voip/contacts/b/b/j;->h:I

    .line 13
    return-void
.end method
