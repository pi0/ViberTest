.class Lcom/viber/voip/util/upload/a/e;
.super Ljava/io/FileInputStream;
.source "SourceFile"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/viber/voip/util/upload/a/c;


# direct methods
.method constructor <init>(Lcom/viber/voip/util/upload/a/c;Ljava/io/File;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1049
    iput-object p1, p0, Lcom/viber/voip/util/upload/a/e;->b:Lcom/viber/voip/util/upload/a/c;

    iput-wide p3, p0, Lcom/viber/voip/util/upload/a/e;->a:J

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 1050
    iget-wide v0, p0, Lcom/viber/voip/util/upload/a/e;->a:J

    long-to-int v0, v0

    return v0
.end method
