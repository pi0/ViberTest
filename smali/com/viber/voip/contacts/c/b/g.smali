.class Lcom/viber/voip/contacts/c/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/b/e;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/b/e;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/viber/voip/contacts/c/b/g;->a:Lcom/viber/voip/contacts/c/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/viber/voip/contacts/c/b/g;->a:Lcom/viber/voip/contacts/c/b/e;

    invoke-static {v0}, Lcom/viber/voip/contacts/c/b/e;->a(Lcom/viber/voip/contacts/c/b/e;)[Lcom/viber/voip/contacts/c/b/d;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 41
    invoke-virtual {v3}, Lcom/viber/voip/contacts/c/b/d;->onConnect()V

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    :cond_0
    return-void
.end method
