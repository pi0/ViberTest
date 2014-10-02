.class Lcom/viber/voip/contacts/c/f/a/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/contacts/c/f/a/a/z;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/viber/voip/contacts/c/f/a/a/aa;

.field final synthetic c:Lcom/viber/voip/contacts/c/f/a/a/n;


# direct methods
.method constructor <init>(Lcom/viber/voip/contacts/c/f/a/a/n;ILcom/viber/voip/contacts/c/f/a/a/aa;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Lcom/viber/voip/contacts/c/f/a/a/o;->c:Lcom/viber/voip/contacts/c/f/a/a/n;

    iput p2, p0, Lcom/viber/voip/contacts/c/f/a/a/o;->a:I

    iput-object p3, p0, Lcom/viber/voip/contacts/c/f/a/a/o;->b:Lcom/viber/voip/contacts/c/f/a/a/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/viber/voip/contacts/c/f/a/a/o;->c:Lcom/viber/voip/contacts/c/f/a/a/n;

    iget v1, p0, Lcom/viber/voip/contacts/c/f/a/a/o;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/viber/voip/contacts/c/f/a/a/o;->b:Lcom/viber/voip/contacts/c/f/a/a/aa;

    invoke-static {v0, v1, v2}, Lcom/viber/voip/contacts/c/f/a/a/n;->a(Lcom/viber/voip/contacts/c/f/a/a/n;ILcom/viber/voip/contacts/c/f/a/a/aa;)V

    .line 108
    return-void
.end method
