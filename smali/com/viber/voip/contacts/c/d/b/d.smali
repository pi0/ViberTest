.class Lcom/viber/voip/contacts/c/d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/b/b/i;

.field final synthetic b:Lcom/viber/voip/contacts/c/d/b/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/b/b;Lcom/viber/voip/contacts/b/b/i;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/b/d;->b:Lcom/viber/voip/contacts/c/d/b/b;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/d/b/d;->a:Lcom/viber/voip/contacts/b/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 210
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/b/d;->b:Lcom/viber/voip/contacts/c/d/b/b;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/b/b;->a:Lcom/viber/voip/contacts/c/d/d;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/b/d;->b:Lcom/viber/voip/contacts/c/d/b/b;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/d/b/b;->b(Lcom/viber/voip/contacts/c/d/b/b;)J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/viber/voip/contacts/c/d/b/d;->a:Lcom/viber/voip/contacts/b/b/i;

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/contacts/c/d/d;->a(ZJLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 211
    return-void
.end method
