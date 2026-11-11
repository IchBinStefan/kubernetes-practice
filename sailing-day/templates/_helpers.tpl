{{/* Expand the name of the chart. */}}
{{- define "sailing-day.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "sailing-day.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/* Create chart name and version as used by the chart label. */}}
{{- define "sailing-day.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/* Common labels */}}
{{- define "sailing-day.labels" -}}
helm.sh/chart: {{ include "sailing-day.chart" . }}
{{ include "sailing-day.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
application: {{ .Values.application.name }}
environment: {{ .Values.environment }}
{{- end }}

{{/* Selector labels */}}
{{- define "sailing-day.selectorLabels" -}}
app.kubernetes.io/name: {{ include "sailing-day.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
application: {{ .Values.application.name }}
environment: {{ .Values.environment }}
{{- end }}
