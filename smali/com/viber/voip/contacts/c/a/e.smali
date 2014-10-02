.class Lcom/viber/voip/contacts/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/a/g;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/viber/voip/contacts/c/a/b;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/a/b;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/viber/voip/contacts/c/a/e;->b:Lcom/viber/voip/contacts/c/a/b;

    iput-object p2, p0, Lcom/viber/voip/contacts/c/a/e;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/contacts/c/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/viber/voip/contacts/c/a/e;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/voip/contacts/c/a/a;->a(Ljava/lang/String;)V

    .line 62
    return-void
.end method
