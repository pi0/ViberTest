.class Lcom/viber/voip/contacts/c/d/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/viber/voip/contacts/b/b/i;

.field final synthetic c:Lcom/viber/voip/contacts/c/d/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/d/a/b;ZLcom/viber/voip/contacts/b/b/i;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 304
    iput-object p1, p0, Lcom/viber/voip/contacts/c/d/a/e;->c:Lcom/viber/voip/contacts/c/d/a/b;

    iput-boolean p2, p0, Lcom/viber/voip/contacts/c/d/a/e;->a:Z

    iput-object p3, p0, Lcom/viber/voip/contacts/c/d/a/e;->b:Lcom/viber/voip/contacts/b/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 308
    iget-object v0, p0, Lcom/viber/voip/contacts/c/d/a/e;->c:Lcom/viber/voip/contacts/c/d/a/b;

    iget-object v0, v0, Lcom/viber/voip/contacts/c/d/a/b;->a:Lcom/viber/voip/contacts/c/d/d;

    iget-boolean v1, p0, Lcom/viber/voip/contacts/c/d/a/e;->a:Z

    iget-object v2, p0, Lcom/viber/voip/contacts/c/d/a/e;->c:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v2}, Lcom/viber/voip/contacts/c/d/a/b;->d(Lcom/viber/voip/contacts/c/d/a/b;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/viber/voip/contacts/c/d/a/e;->c:Lcom/viber/voip/contacts/c/d/a/b;

    invoke-static {v4}, Lcom/viber/voip/contacts/c/d/a/b;->e(Lcom/viber/voip/contacts/c/d/a/b;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/viber/voip/contacts/c/d/a/e;->b:Lcom/viber/voip/contacts/b/b/i;

    invoke-interface/range {v0 .. v5}, Lcom/viber/voip/contacts/c/d/d;->a(ZJLjava/lang/String;Lcom/viber/voip/contacts/b/d;)V

    .line 309
    return-void
.end method
