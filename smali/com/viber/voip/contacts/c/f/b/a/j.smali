.class Lcom/viber/voip/contacts/c/f/b/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/b/a/a;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/b/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/b/a/j;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/j;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/b/a/a;->d(Lcom/viber/voip/contacts/c/f/b/a/a;Z)Z

    .line 180
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/b/a/j;->a:Lcom/viber/voip/contacts/c/f/b/a/a;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/b/a/a;->e()V

    .line 181
    return-void
.end method
