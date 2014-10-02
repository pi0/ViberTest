.class Lcom/viber/error/report/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field final synthetic a:Lcom/viber/error/report/ErrorReportDialog;


# direct methods
.method constructor <init>(Lcom/viber/error/report/ErrorReportDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/viber/error/report/c;->a:Lcom/viber/error/report/ErrorReportDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 88
    const-string/jumbo v0, ".stacktrace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
