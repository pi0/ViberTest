.class Lcom/viber/voip/contacts/c/f/a/a/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/a/a/h;


# instance fields
.field final synthetic a:Lcom/viber/voip/contacts/c/f/a/a/al;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/al;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/ar;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    .line 284
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ar;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    invoke-virtual {v0}, Lcom/viber/voip/contacts/c/f/a/a/al;->d()V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/ar;->a:Lcom/viber/voip/contacts/c/f/a/a/al;

    sget-object v1, Lcom/viber/voip/contacts/c/f/a/a/au;->c:Lcom/viber/voip/contacts/c/f/a/a/au;

    invoke-static {v0, v1}, Lcom/viber/voip/contacts/c/f/a/a/al;->a(Lcom/viber/voip/contacts/c/f/a/a/al;Lcom/viber/voip/contacts/c/f/a/a/au;)V

    .line 286
    return-void
.end method
